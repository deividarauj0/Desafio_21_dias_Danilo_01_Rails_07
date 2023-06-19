export default function renderClientesTable(clientes, paginaCorrente = 1) {
  return `
    <h1 style="margin-top: 1px; class="major">Clientes</h1>
    <button data-action="click->clientes#formClientes">Novo Cliente</button>
    <br><br>
    <table style="margin-top: 0px; margin-bottom: 5px;">
        <thead>
          <tr>
            <th>ID</th>
            <th>Nome</th>
            <th>Telefone</th>
            <th>Endereço</th>
          </tr>
        </thead>
        <tbody>
          ${clientes.map(cliente => `
            <tr>
              <td>${cliente.id}</td>
              <td>${cliente.nome}</td>
              <td>${cliente.telefone}</td>
              <td>${cliente.endereco}</td>

              <td>
                <button class="btn btn-editar" data-action="click->clientes#alterar" data-cliente='${JSON.stringify(cliente)}'>Editar</button>
              </td>
              <td>
                <button class="btn btn-excluir" data-action="click->clientes#excluir" data-cliente='${JSON.stringify(cliente)}'>Excluir</button>
              </td>
            </tr>
          `).join("")}
        </tbody>
    </table>

    <button data-action="click->clientes#anterior" ${paginaCorrente === 1 ? 'style="display: none;"' : ''}>< Anterior</button>
    <button data-action="click->clientes#proximo" ${clientes.length < 3 ? 'style="display: none;"' : ''}>Próximo ></button>
  `;
}
